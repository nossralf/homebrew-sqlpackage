class Sqlpackage < Formula
  desc "SqlPackage is a command-line utility that automates various MSSQL tasks"
  homepage "https://docs.microsoft.com/en-us/sql/tools/sqlpackage-download"
  url "https://go.microsoft.com/fwlink/?linkid=2108815"
  sha256 "c7e5f1f5fa2342a73286e66aeb9b6921296e33db9cdc06876d547148c8634da6"
  version "18.4"

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
