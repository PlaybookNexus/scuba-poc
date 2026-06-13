const express = require("express");
const { execFile } = require("child_process");
const fs = require("fs");
const path = require("path");

const app = express();
const port = 3000;

// Paths
const scriptPath = path.join("C:", "dev", "scuba-poc", "scripts", "scuba.ps1");
const outputPath = path.join("C:", "dev", "scuba-poc", "output.json");

// Routers
const remediationRouter = require("./routes/remediation");

// Parse JSON bodies
app.use(express.json());

// --- SCAN ENDPOINT ---
app.get("/scan", (req, res) => {
  execFile(
    "powershell.exe",
    ["-NoProfile", "-ExecutionPolicy", "Bypass", "-File", scriptPath],
    (error, stdout, stderr) => {
      if (error) {
        return res.status(500).json({
          success: false,
          error: error.message,
          stderr: stderr
        });
      }

      try {
        let raw = fs.readFileSync(outputPath, "utf8");

        // Remove BOM + trim whitespace
        raw = raw.replace(/^\uFEFF/, "").trim();

        const json = JSON.parse(raw);

        res.json({
          success: true,
          data: json
        });

      } catch (err) {
        res.status(500).json({
          success: false,
          error: err.message
        });
      }
    }
  );
});

// --- REMEDIATION ROUTES ---
app.use("/api/write", remediationRouter);

// --- SERVER START ---
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});