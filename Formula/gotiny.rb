class Gotiny < Formula
    desc "Using gotiny.cc from the command-line"
    homepage "https://github.com/ndthanhdev/gotiny-cli"
    url "https://github.com/ndthanhdev/gotiny-cli/archive/refs/tags/v1.0.6.tar.gz"
    sha256 "4fb9a57428ea07086b3bafd412556e5b358433add50a4288dbeb96a34c909850"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"gotiny"
    end
  
    test do
      system bin/"gotiny", "--version"
    end
  end
  