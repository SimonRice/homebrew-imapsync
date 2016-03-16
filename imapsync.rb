require 'formula'

class Imapsync < Formula
  url 'https://fedorahosted.org/released/imapsync/imapsync-1.678.tgz'
  homepage 'http://ks.lamiral.info/imapsync/'
  sha256 '39cc21bc7b046d46f02fb0ef507119eecd4446fd0f795d998927a5ff635ea9f7'

  depends_on 'Mail::IMAPClient' => :perl
  depends_on 'Authen::NTLM'     => :perl
  depends_on 'File::Copy::Recursive'     => :perl


  def install
    system 'perl', '-c', 'imapsync'
    system 'pod2man', 'imapsync', 'imapsync.1'
    bin.install 'imapsync'
    man1.install 'imapsync.1'
  end

end
