class Stodo < Formula
  desc "Swifty command-line tool for todo list."
  homepage "https://pixyzehn.com"
  url "https://github.com/pixyzehn/stodo.git"
  version "0.0.3"
  sha256 "d570c723d653a47ae0bb68e31b86f889f5f5081b310e1a0e8baf243021bcdbf9"

  depends_on 'carthage' => :build

  def install
    system "make", "install"
  end

  test do
    system bin/"stodo"
  end
end
