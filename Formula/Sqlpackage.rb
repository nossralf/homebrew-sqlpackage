class Sqlpackage < Formula
  desc "SqlPackage is a command-line utility that automates various MSSQL tasks"
  homepage "https://docs.microsoft.com/en-us/sql/tools/sqlpackage-download"
  url "https://go.microsoft.com/fwlink/?linkid=2134312"
  sha256 "c819ea23a689ed1c398529d5a904703e8417fcfb74174f9f196adb7c430ebb16"
  version "18.5.1"

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
