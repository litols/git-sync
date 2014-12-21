#Git-Sync#

Gitの単方向同期をとるための簡単なツールです。(SSH接続専用)

##Installation##
private/hook.phpの$SECRET_KEYと$SYNC_SCRIPT_PATHを変更します。SECRET_KEYはwebhookをかけるときに必要です。

    #!php
    $SECRET_KEY = '1234567890';
    $SYNC_SCRIPT_PATH = '/full/path/to/sync.sh';

次に、 private/sync.shを変更します。各ファイルを配置しているパスを記述します。
SSHの秘密鍵についてはカスタムできるので、このGit-syncを動かすためだけのSSH秘密鍵を設定することをお勧めします。

    #!shell
    PATH_TO_REPO='/path/to/bare/repository.git'
    PATH_TO_GIT_SSH='/path/to/git-ssh.sh'
    PATH_TO_LOG='/path/to/sync.log'
    FOR_REMOTE='origin2'
    export SSH_SECRETKEY_PATH='/path/to/.ssh/id_rsa'
    GIT_REMOTE_1='ssh://user@git.example.com/user/repository.git'
    GIT_REMOTE_2='git@bitbucket.org:user/repository.git'

##Usage##
webhookをGitホスティングサービスに設定しておきます。URLは、`http://example.com/git-sync/hook.php?key={$SECRET_KEY}`
にします。

----------

#Git-Sync#

This is a Git simplex sync script. (Only SSH connection.)

##Installation##
Please change private/hook.php $SECRET_KEY and $SYNC_SCRIPT_PATH

    #!php
    $SECRET_KEY = '1234567890';
    $SYNC_SCRIPT_PATH = '/full/path/to/sync.sh';

Next, Please change private/sync.sh

    #!shell
    PATH_TO_REPO='/path/to/bare/repository.git'
    PATH_TO_GIT_SSH='/path/to/git-ssh.sh'
    PATH_TO_LOG='/path/to/sync.log'
    FOR_REMOTE='origin2'
    export SSH_SECRETKEY_PATH='/path/to/.ssh/id_rsa'
    GIT_REMOTE_1='ssh://user@git.example.com/user/repository.git'
    GIT_REMOTE_2='git@bitbucket.org:user/repository.git'

Please place files web server.

##Usage##
Please set up webhook for `http://example.com/git-sync/hook.php?key={$SECRET_KEY}`


----------


##Licence##

Copyright (c) 2014 Litols(@litols0816)
http://li-feel.blogspot.jp

This software is released under the MIT License.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[1]: http://posterous.com/help/markdown
[2]: https://github.com/derobins/wmd
[3]: http://posterous.com
[4]: http://placehold.it/350x150
[5]: http://daringfireball.net/projects/markdown/