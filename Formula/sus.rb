class Sus < Formula
  desc "Line frequency analyzer"
  homepage "https://github.com/quartzinquartz/sus"
  url "https://github.com/quartzinquartz/sus/archive/v1.0.0.tar.gz"
  sha256 "a60eed7d65bbf9bda8a80b564c561d324d3042b268622697724d34b5f53f4b48"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "sus version 1.0.0", shell_output("#{bin}/sus -version")
  end
end
