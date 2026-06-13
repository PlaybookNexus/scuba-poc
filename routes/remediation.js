// routes/remediation.js
const express = require('express');
const router = express.Router();
const { execFile } = require('child_process');
const path = require('path');

// Helper to run PowerShell scripts safely
function runPsScript(scriptName, res) {
    const scriptPath = path.join(__dirname, '..', 'powershell', scriptName);

    execFile(
        'powershell.exe',
        ['-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', scriptPath],
        (error, stdout, stderr) => {
            if (error) {
                return res.status(500).json({
                    success: false,
                    error: error.message,
                    stderr: stderr
                });
            }

            res.json({
                success: true,
                output: stdout.trim()
            });
        }
    );
}

// --- REMEDIATION ENDPOINTS ---

// Disable guest access
router.post('/guestAccess', (req, res) => {
    runPsScript('fix-guest-access.ps1', res);
});

// Disable legacy authentication
router.post('/legacyAuth', (req, res) => {
    runPsScript('fix-legacy-auth.ps1', res);
});

// Harden Teams external access
router.post('/teamsExternal', (req, res) => {
    runPsScript('fix-teams-external.ps1', res);
});

// Harden SharePoint sharing settings
router.post('/sharepointSharing', (req, res) => {
    runPsScript('fix-sharepoint-sharing.ps1', res);
});

// Harden admin consent policies
router.post('/adminConsent', (req, res) => {
    runPsScript('fix-admin-consent.ps1', res);
});

// Create baseline Conditional Access policies
router.post('/conditionalAccess/baseline', (req, res) => {
    runPsScript('fix-conditional-access-baseline.ps1', res);
});

// Verify domain
router.post('/domain/verify', (req, res) => {
    runPsScript('fix-domain-verify.ps1', res);
});

module.exports = router;