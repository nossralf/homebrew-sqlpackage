class Sqlpackage < Formula
  desc "SqlPackage is a command-line utility that automates various MSSQL tasks"
  homepage "https://docs.microsoft.com/en-us/sql/tools/sqlpackage/sqlpackage"
  url "https://go.microsoft.com/fwlink/?linkid=2196439"
  sha256 "78b0c042c67685b3a8c9531ae978b74482ebc6da4adade23f57f6ccb3675d580"
  version "19.1"

  def install
    libexec.install Dir["*"]
    system "chmod +x #{libexec}/sqlpackage"
    bin.install_symlink "#{libexec}/sqlpackage"
  end

  test do
    system "sqlpackage"
  end
end
