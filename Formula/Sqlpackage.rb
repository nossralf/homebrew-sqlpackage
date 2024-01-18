class Sqlpackage < Formula
  desc "SqlPackage is a command-line utility that automates various MSSQL tasks"
  homepage "https://learn.microsoft.com/en-us/sql/tools/sqlpackage/sqlpackage"
  url "https://go.microsoft.com/fwlink/?linkid=2257375"
  sha256 "39891b6f81c5192a938f2f6870f88dc59abfed566b9029ffa38bced79dd08dea"
  version "162.1.172"

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
