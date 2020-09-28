class Sqlpackage < Formula
  desc "SqlPackage is a command-line utility that automates various MSSQL tasks"
  homepage "https://docs.microsoft.com/en-us/sql/tools/sqlpackage-download"
  url "https://go.microsoft.com/fwlink/?linkid=2143659"
  sha256 "49e2159fa541a2b761735085e97738f70ac56cc1e1ed820f57274519c43264ab"
  version "18.6"

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
