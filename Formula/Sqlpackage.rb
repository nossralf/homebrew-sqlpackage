class Sqlpackage < Formula
  desc "SqlPackage is a command-line utility that automates various MSSQL tasks"
  homepage "https://docs.microsoft.com/en-us/sql/tools/sqlpackage-download"
  url "https://go.microsoft.com/fwlink/?linkid=2128145"
  sha256 "66f7ef2c1cff5aea78e47a4694401dd04518bc6015807484085cf72f93032bd0"
  version "18.5"

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
