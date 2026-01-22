class ScriptureToSlides < Formula
  include Language::Python::Virtualenv

  desc "Generate presentation-ready PDF slides from scripture passages"
  homepage "https://github.com/cmshinkle/scripture-to-slides"
  url "https://github.com/cmshinkle/scripture-to-slides/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3e17aa15bd97a01f65b45730e1c7f3ac9816c6d1a19353077cd17baf828b68e7"
  license "MIT"

  depends_on "python@3.13"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/7e/36/c05f9ae75da2e45c7cfb21d08c0984816cd1fc7bf5ac0c81e2dd468b8f49/certifi-2026.1.4.tar.gz"
    sha256 "5bdbf17c0d5b486fbf8fd13ef4e8cc02e04f394cb67eaa13eede74fa8dbf8fdb"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/f6/93/1bac3690f1871f2f2c8e97af8e9b89e4d8c8c40dede4f98b80dbb5c67d3c/charset_normalizer-3.4.4.tar.gz"
    sha256 "e59e0c5fb4e8ca87ca5f32e9b35f0b8e4deb89e9a99e6ea13e0c4e41b4b8d3c0"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.11.tar.gz"
    sha256 "85ce07a8797d76a88bb30c87dc6c2d1d83e5ed4a9a9b23bed2b1caa4f7d3e1fe"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/31/69/1ef0fb9d2039d3e26bb4b42bf8b3a95cd44a7b8e29190c0c5377c88832f6/pillow-12.1.0.tar.gz"
    sha256 "4e37b4e1c1f2df62976f35b0b3f89a24fdcf8a5b973da8e6e3a6c31978bb9f78"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/f8/aa/7af4e81f7acba21a4c6be026da38fd2b872ca46226673c89a758ebdc4fd2/pyyaml-6.0.3.tar.gz"
    sha256 "8f8b6aeed4d2b0e5c3e61c65e0e50f2c4b7e3aaa05a71f5b77e9fbe07f76925a"
  end

  resource "reportlab" do
    url "https://files.pythonhosted.org/packages/4a/7d/be0cbd84edf46ac30c9e7c893a5a1b9e72f81e07c6ece2c4c5b0b1b15d31/reportlab-4.4.9.tar.gz"
    sha256 "dc2f4c48f1f29f04b53e1e80ba7f2dc7c6d03535c7d99e5e0ec8f7fa3e6cc9f3"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c2/c2/d63cec1dc9e2fe0afac0042808b5d38d5cb0db1e3f54b6c8e5e2dd0d94e1/requests-2.32.5.tar.gz"
    sha256 "14db42ab7fd81e5bb0f88cec1cf73f0b562c5cf83bcbc4fad6ad1a3a86b3e45d"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7b/42/72e85a08a5eb4d77903bfda8b8c2b3fc06fe2c14e43ea993cf4a2da3a4eb/urllib3-2.6.3.tar.gz"
    sha256 "1d5d6d6ea2e31e41d11dfb54c3db0c93b4f6d7c4d3e19a3ec5c8d9d9dddc8e96"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "scripture-to-slides", shell_output("#{bin}/scripture-to-slides --help")
  end
end
