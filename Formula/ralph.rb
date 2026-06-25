class Ralph < Formula
  include Language::Python::Virtualenv

  desc "Autonomous Claude CLI orchestrator — solo iteration or parallel agents in waves"
  homepage "https://github.com/CodeBlackwell/army-of-ralph"
  url "https://files.pythonhosted.org/packages/d8/d0/5e098626cfff7f25d4a01ad20164652d0b44bd12641a846d6ccc22197332/army_of_ralph-0.3.0.tar.gz"
  sha256 "4819ef520058f957e27c56beaf77f4d84f472d3373e336c7e254b0dbb068a6d7"
  license "MIT"

  depends_on "python@3.12"

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/87/d7/0535a28b1f5f24f6612fb3ff1e89fb1a8d160fee0f976e0aa6803862134b/tqdm-4.68.3.tar.gz"
    sha256 "00dfa48452b6b6cfae3dd9885636c23d3422d1ec97c66d96818cbd5e0821d482"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ralph", shell_output("#{bin}/ralph --help")
  end
end
