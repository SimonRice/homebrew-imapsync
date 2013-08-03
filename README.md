# IMAPSync Formula for Homebrew

This is a [Homebrew](http://brew.sh) formula for imapsync, which is copied over from an unmerged Homebrew fork by budrick.  To install open up a terminal:

1.  Type `brew tap simonrice/imapsync` to add this repository to homebrew.
2.  Since homebrew doesn't manage perl dependencies, run `sudo cpan -i Authen::NTLM Mail::IMAPClient`.
3.  Finally, `brew install imapsync` to install imapsync.
