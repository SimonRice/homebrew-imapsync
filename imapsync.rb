require 'formula'

class Imapsync < Formula
  url 'https://fedorahosted.org/released/imapsync/imapsync-1.456.tgz'
  homepage 'http://ks.lamiral.info/imapsync/'
  sha256 '001308e082ae5f504b9f60509881c20c1dcf1f916f3b20ac53622c6bdb6af58d'

  depends_on 'Mail::IMAPClient' => :perl
  depends_on 'Authen::NTLM'     => :perl

  def install
    system 'perl', '-c', 'imapsync'
    system 'pod2man', 'imapsync', 'imapsync.1'
    bin.install 'imapsync'
    man1.install 'imapsync.1'
  end

end
