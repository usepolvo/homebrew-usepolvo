class Usepolvo < Formula
  include Language::Python::Virtualenv

  desc "An all-in-one integration CLI package."
  homepage "https://github.com/usepolvo/usepolvo-cli"
  url "https://github.com/usepolvo/usepolvo-cli/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "03fad6e9fb484b91912d0c17a109b1c96edddd4e6437db4855fd841f0f50d39c"
  license "MIT"

  depends_on "python@3.9"

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "usepolvo" do
    url "https://files.pythonhosted.org/packages/02/44/c6a0472b6dfe2fe9e46da45f2bb8a90e8d6396fd06d63a038032b0c92f2a/usepolvo-0.1.16.tar.gz"
    sha256 "b3064a35807dcf6738aecc3c60856ba8013d1735fe94efb19fd9f40704121722"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/bc/57/e84d88dfe0aec03b7a2d4327012c1627ab5f03652216c63d49846d7a6c58/python-dotenv-1.0.1.tar.gz"
    sha256 "e324ee90a023d808f1959c46bcbc04446a10ced277783dc6ee09987c37ec10ca"
  end

  resource "stripe" do
    url "https://files.pythonhosted.org/packages/bb/da/bd8c4be9099fea125fb44fe88a17b4dddd9e20506c3ee46fd47090a1ffef/stripe-10.5.0.tar.gz"
    sha256 "4e7966a2bba0095354ae00d6dc352c2b58646f1ac258a9c28bf56973ae102bb1"
  end

  resource "typing_extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end


  def install
    # Move contents of src to the root
    (buildpath/"src").children.each do |child|
      mv child, buildpath
    end

    # Remove empty src directory
    rmdir "src"

    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage: usepolvo", shell_output("#{bin}/usepolvo --help")
  end
end