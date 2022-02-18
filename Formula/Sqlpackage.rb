class Sqlpackage < Formula
  desc "SqlPackage is a command-line utility that automates various MSSQL tasks"
  homepage "https://docs.microsoft.com/en-us/sql/tools/sqlpackage/sqlpackage"
  url "https://go.microsoft.com/fwlink/?linkid=2185765"
  sha256 "8e7c50f301e4833e52a4d611b22bd22fb98e4658cbdeab7fda2862488336731a"
  version "19.0"

  def install
    libexec.install Dir["*"]
    system "chmod +x #{libexec}/sqlpackage"
    bin.install_symlink "#{libexec}/sqlpackage"
  end

  test do
    system "sqlpackage"
  end
end
