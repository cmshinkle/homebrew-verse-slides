class ScriptureToSlides < Formula
  include Language::Python::Virtualenv

  desc "Generate presentation-ready PDF slides from scripture passages"
  homepage "https://github.com/cmshinkle/scripture-to-slides"
  url "https://github.com/cmshinkle/scripture-to-slides/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3e17aa15bd97a01f65b45730e1c7f3ac9816c6d1a19353077cd17baf828b68e7"
  license "MIT"

  depends_on "python@3.13"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "reportlab" do
    url "https://files.pythonhosted.org/packages/1a/39/42cf24aee570a80e1903221ae3a92a2e34c324794a392eb036cbb6dc3839/reportlab-4.4.9.tar.gz"
    sha256 "7cf487764294ee791a4781f5a157bebce262a666ae4bbb87786760a9676c9378"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "scripture-to-slides", shell_output("#{bin}/scripture-to-slides --help")
  end
end
