class ScriptureToSlides < Formula
  include Language::Python::Virtualenv

  desc "Generate presentation-ready PDF slides from scripture passages"
  homepage "https://github.com/cmshinkle/scripture-to-slides"
  url "https://github.com/cmshinkle/scripture-to-slides/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3e17aa15bd97a01f65b45730e1c7f3ac9816c6d1a19353077cd17baf828b68e7"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "scripture-to-slides", shell_output("#{bin}/scripture-to-slides --help")
  end
end
