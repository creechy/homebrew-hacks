class OxkerCreechy < Formula
  desc "Simple tui to view & control docker containers"
  homepage "https://github.com/creechy/oxker"
  url "https://github.com/creechy/oxker/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "92f0b42f837fd684a6b8c795edd6b456e8d8687f41340c3e3bcd4cd292ff1424"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test oxker-creechy`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
