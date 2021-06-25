class Sqlpackage < Formula
  desc "SqlPackage is a command-line utility that automates various MSSQL tasks"
  homepage "https://docs.microsoft.com/en-us/sql/tools/sqlpackage/sqlpackage"
  url "https://go.microsoft.com/fwlink/?linkid=2165132"
  sha256 "4d54f188d59b65417875d803d6dbb358b38815d2784a618dd172ff9587583368"
  version "18.7.1"

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
