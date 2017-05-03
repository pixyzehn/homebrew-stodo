class Stodo < Formula
  desc "Swifty command-line tool for todo list."
  homepage "https://pixyzehn.com"
  url "https://github.com/pixyzehn/stodo.git",
      :tag => "0.1.1",
      :shallow => false
  version "0.1.1"
  sha256 "d570c723d653a47ae0bb68e31b86f889f5f5081b310e1a0e8baf243021bcdbf9"

  bottle do
    cellar :any
    root_url "https://github.com/pixyzehn/stodo/releases/download/0.1.1"
  end

  depends_on :xcode => ["8.3", :build]
  depends_on 'carthage' => :build

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"stodo"
  end
end
