// ==========================================
// PENGATURAN DATABASE & SISTEM UTAMA (D1 EDITION)
// ==========================================

// Menggunakan origin web saat ini, jadi Frontend dan Backend (Pages Worker) menyatu!
const SCRIPT_URL = window.location.origin + "/";
window.SCRIPT_URL = SCRIPT_URL;
window.CLOUDMEMBER_APP = {
    name: "cloudmember",
    version: "1.0.58",
    releaseDate: "2026-06-20"
};

// ==========================================
// 🎯 RADAR AFFILIATE GLOBAL
// ==========================================
(function() {
    const urlParams = new URLSearchParams(window.location.search);
    const refCode = urlParams.get('ref');
    
    if (refCode) {
        localStorage.setItem('melimpah_affiliate', refCode.trim());
        console.log("Radar Affiliate Aktif: " + refCode);
    }
})();
