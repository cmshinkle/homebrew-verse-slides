class ScriptureToSlides < Formula
  include Language::Python::Virtualenv

  desc "Generate presentation-ready PDF slides from scripture passages"
  homepage "https://github.com/cmshinkle/scripture-to-slides"
  url "https://github.com/cmshinkle/scripture-to-slides/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3e17aa15bd97a01f65b45730e1c7f3ac9816c6d1a19353077cd17baf828b68e7"
  license "MIT"

  depends_on "python@3.11"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.5.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "reportlab" do
    url "https://files.pythonhosted.org/packages/4a/7d/be0cbd84edf46ac30c9e7c893a5a1b9e72f81e07c6ece2c4c5b0b1b15d31/reportlab-4.4.9.tar.gz"
    sha256 "dc2f4c48f1f29f04b53e1e80ba7f2dc7c6d03535c7d99e5e0ec8f7fa3e6cc9f3"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/f8/aa/7af4e81f7acba21a4c6be026da38fd2b872ca46226673c89a758ebdc4fd2/pyyaml-6.0.3.tar.gz"
    sha256 "8f8b6aeed4d2b0e5c3e61c65e0e50f2c4b7e3aaa05a71f5b77e9fbe07f76925a"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/31/69/1ef0fb9d2039d3e26bb4b42bf8b3a95cd44a7b8e29190c0c5377c88832f6/pillow-12.1.0.tar.gz"
    sha256 "4e37b4e1c1f2df62976f35b0b3f89a24fdcf8a5b973da8e6e3a6c31978bb9f78"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "scripture-to-slides", shell_output("#{bin}/scripture-to-slides --help")
  end
end
