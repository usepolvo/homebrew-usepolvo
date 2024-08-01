class Usepolvo < Formula
    include Language::Python::Virtualenv
  
    desc "An all-in-one integration CLI package."
    homepage "https://github.com/usepolvo/usepolvo-cli"
    url "https://github.com/usepolvo/usepolvo-cli/archive/refs/tags/v0.1.4.tar.gz"
    sha256 "10f072575ed5088221e5b311fe93c4d7281a881b15c148df111371f986c35f88"
    license "MIT"
  
    depends_on "python@3.9"
  
    resource "click" do
      url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
      sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
    end
  
    resource "usepolvo" do
      url "https://test-files.pythonhosted.org/packages/f3/43/5fcba2d08fd2c0afe44d2759f83dfd7d15af6c95f0b58342239295afaa63/usepolvo-0.1.17.tar.gz"
      sha256 "a326e1d8fe4cb47db3d2d268dee6ce36021e172bda64d7002de77bb47e46d1c1"
    end
  
    def install
      # Change to the src directory before installing
      cd "src" do
        virtualenv_install_with_resources
      end
    end
  
    test do
      assert_match "Usage: usepolvo", shell_output("#{bin}/usepolvo --help")
    end
  end