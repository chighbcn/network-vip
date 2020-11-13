#!/usr/bin/env bash
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
# DEALINGS IN THE SOFTWARE.
###########################################################################  
#
# Three options for installation. Choose one of the following:
#
# 1. Copy to /etc/cron.minutely
#
# 2. Copy the script to the DNS server. Create a file in /etc/cron.d with 
#    the following syntax:
#
#    * * * * *    root    /path/to/icmp_ratelimit.sh >/dev/null 2>&1
#
# 3. Create a user cron entry while using `crontab -e`
#
#    * * * * *    /path/to/icmp_ratelimit.sh >/dev/null 2>&1
#
# - Change "/path/to" to match the exact location of the script.
# - Finally, make sure it is executable: chmod +x /path/to/icmp_ratelimit.sh
#
SECONDS="60"
while [[ ${SECONDS} -gt 0 ]]
do
    echo $((500 + $RANDOM % 1500)) > /proc/sys/net/ipv4/icmp_ratelimit
    sleep .95
    let SECONDS=SECONDS-1
done
