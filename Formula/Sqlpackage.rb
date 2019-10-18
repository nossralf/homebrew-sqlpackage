class Sqlpackage < Formula
  desc "SqlPackage is a command-line utility that automates various MSSQL tasks"
  homepage "https://docs.microsoft.com/en-us/sql/tools/sqlpackage-download"
  url "https://go.microsoft.com/fwlink/?linkid=2102894"
  sha256 "bf93983fd3a121a628ce0879584d8952ebccb5401459314fe348f5e163f40f13"
  version "18.3.1"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    system "chmod +x #{libexec}/sqlpackage"
    bin.install_symlink "#{libexec}/sqlpackage"
  end

  test do
    system "sqlpackage"
  end
end
