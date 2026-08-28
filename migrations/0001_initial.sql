CREATE TABLE IF NOT EXISTS settings (
  kunci TEXT PRIMARY KEY,
  nilai TEXT
);

CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  id_user TEXT UNIQUE,
  email TEXT UNIQUE,
  password TEXT,
  nama TEXT,
  role TEXT DEFAULT 'member',
  tanggal_daftar TEXT,
  whatsapp TEXT,
  affiliate TEXT,
  rekening TEXT,
  info_rekening TEXT
);

CREATE TABLE IF NOT EXISTS access_rules (
  id_produk TEXT PRIMARY KEY,
  title TEXT,
  "desc" TEXT,
  deskripsi TEXT,
  url_akses TEXT,
  url TEXT,
  harga REAL DEFAULT 0,
  status TEXT DEFAULT 'Active',
  lp_url TEXT,
  komisi REAL DEFAULT 0,
  komisi_l2 REAL DEFAULT 0,
  komisi_l3 REAL DEFAULT 0,
  bump_status TEXT DEFAULT 'Inactive',
  bump_title TEXT,
  bump_price REAL DEFAULT 0,
  bump_desc TEXT,
  bump_url TEXT,
  gambar TEXT,
  kategori TEXT DEFAULT 'Umum',
  harga_coret REAL DEFAULT 0,
  pdf_drive_id TEXT,
  ga_id TEXT,
  meta_pixel_id TEXT
);

CREATE TABLE IF NOT EXISTS orders (
  invoice TEXT PRIMARY KEY,
  email TEXT,
  nama TEXT,
  whatsapp TEXT,
  id_produk TEXT,
  nama_produk TEXT,
  harga_total REAL DEFAULT 0,
  status TEXT DEFAULT 'Pending',
  tanggal_order TEXT,
  affiliate TEXT,
  komisi REAL DEFAULT 0,
  affiliate_l1 TEXT,
  affiliate_l2 TEXT,
  affiliate_l3 TEXT,
  komisi_l1 REAL DEFAULT 0,
  komisi_l2 REAL DEFAULT 0,
  komisi_l3 REAL DEFAULT 0,
  reminder_level INTEGER DEFAULT 0,
  take_bump TEXT,
  license_key TEXT,
  payment_method TEXT,
  payment_channel TEXT,
  payment_name TEXT,
  payment_code TEXT,
  payment_owner TEXT,
  payment_url TEXT,
  payment_qr_url TEXT,
  payment_instruction TEXT,
  domain TEXT,
  meta_fbp TEXT,
  meta_fbc TEXT,
  meta_client_ip TEXT,
  meta_user_agent TEXT,
  meta_purchase_sent TEXT,
  meta_purchase_prod_sent TEXT,
  meta_purchase_test_sent TEXT,
  meta_purchase_last_error TEXT,
  meta_purchase_events_received INTEGER DEFAULT 0,
  meta_purchase_fbtrace_id TEXT,
  meta_purchase_last_attempt TEXT
);

CREATE TABLE IF NOT EXISTS coupons (
  kode_promo TEXT PRIMARY KEY,
  tipe TEXT,
  nilai REAL DEFAULT 0,
  status TEXT DEFAULT 'Active',
  berlaku_untuk_prod TEXT DEFAULT 'All'
);

CREATE TABLE IF NOT EXISTS pages (
  id_page TEXT PRIMARY KEY,
  slug TEXT UNIQUE,
  title TEXT,
  content TEXT,
  seo_title TEXT,
  seo_description TEXT,
  seo_keywords TEXT,
  seo_image TEXT,
  ga_id TEXT,
  meta_pixel_id TEXT,
  status TEXT DEFAULT 'Active',
  tanggal_buat TEXT
);

CREATE TABLE IF NOT EXISTS lms (
  id_produk TEXT PRIMARY KEY,
  product_id TEXT,
  videos TEXT DEFAULT '[]',
  deskripsi TEXT,
  "desc" TEXT,
  cert_leader1 TEXT,
  cert_role1 TEXT,
  cert_leader2 TEXT,
  cert_role2 TEXT,
  cert_stamp TEXT
);

INSERT OR IGNORE INTO users (id_user, email, password, nama, role, tanggal_daftar)
VALUES ('ADM-001', 'admin@email.com', 'admin123', 'Admin', 'Admin', datetime('now'));

INSERT OR IGNORE INTO settings (kunci, nilai) VALUES
  ('site_name', 'AlvinTools'),
  ('site_tagline', 'Member Area Digital'),
  ('site_url', 'https://domain-anda.com'),
  ('theme_color', '#DC2626'),
  ('is_manual_active', 'true'),
  ('auto_gateway', 'none'),
  ('enable_social_proof', 'false');
