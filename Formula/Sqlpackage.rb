class Sqlpackage < Formula
  desc "SqlPackage is a command-line utility that automates various MSSQL tasks"
  homepage "https://docs.microsoft.com/en-us/sql/tools/sqlpackage/sqlpackage"
  url "https://go.microsoft.com/fwlink/?linkid=2215401"
  sha256 "47b9a72a6c3d732e881d77678cc9af7e2a27a9f7dd47e160ed03afb74304d50c"
  version "161.6374.0"

  depends_on arch: :x86_64

  def install
    libexec.install Dir["*"]
    system "chmod +x #{libexec}/sqlpackage"
    bin.install_symlink "#{libexec}/sqlpackage"
  end

  test do
    system "sqlpackage"
  end
end
