#========= YADDY KAKKOII =========
#xl liveon
port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
tproxy-port: 7895
ipv6: false
mode: rule
log-level: silent
allow-lan: true
external-controller: 0.0.0.0:9090
secret: ""
bind-address: "*"
unified-delay: true
profile:
  store-selected: true
  store-fake-ip: true
dns:
  enable: true
  ipv6: false
  use-host: true
  enhanced-mode: fake-ip
  listen: 127.0.0.1:7874
  nameserver:
    - 1.1.1.1
    - 1.0.0.1
  fallback:
    - https://cloudflare-dns.com/dns-query
    - https://dns.google/dns-query
  default-nameserver:
    - 8.8.8.8
    - 8.8.4.4
  fake-ip-range: 198.18.0.1/16
  fake-ip-filter:
    - "*.lan"
    - "*.localdomain"
    - "*.example"
    - "*.invalid"
    - "*.localhost"
    - "*.test"
    - "*.local"
    - "*.home.arpa"
    - time.*.com
    - time.*.gov
    - time.*.edu.cn
    - time.*.apple.com
    - time1.*.com
    - time2.*.com
    - time3.*.com
    - time4.*.com
    - time5.*.com
    - time6.*.com
    - time7.*.com
    - ntp.*.com
    - ntp1.*.com
    - ntp2.*.com
    - ntp3.*.com
    - ntp4.*.com
    - ntp5.*.com
    - ntp6.*.com
    - ntp7.*.com
    - "*.time.edu.cn"
    - "*.ntp.org.cn"
    - +.pool.ntp.org
    - time1.cloud.tencent.com
    - music.163.com
    - "*.music.163.com"
    - "*.126.net"
    - musicapi.taihe.com
    - music.taihe.com
    - songsearch.kugou.com
    - trackercdn.kugou.com
    - "*.kuwo.cn"
    - api-jooxtt.sanook.com
    - api.joox.com
    - joox.com
    - y.qq.com
    - "*.y.qq.com"
    - streamoc.music.tc.qq.com
    - mobileoc.music.tc.qq.com
    - isure.stream.qqmusic.qq.com
    - dl.stream.qqmusic.qq.com
    - aqqmusic.tc.qq.com
    - amobile.music.tc.qq.com
    - "*.xiami.com"
    - "*.music.migu.cn"
    - music.migu.cn
    - "*.msftconnecttest.com"
    - "*.msftncsi.com"
    - msftconnecttest.com
    - msftncsi.com
    - localhost.ptlogin2.qq.com
    - localhost.sec.qq.com
    - +.srv.nintendo.net
    - +.stun.playstation.net
    - xbox.*.microsoft.com
    - xnotify.xboxlive.com
    - +.battlenet.com.cn
    - +.wotgame.cn
    - +.wggames.cn
    - +.wowsgame.cn
    - +.wargaming.net
    - proxy.golang.org
    - stun.*.*
    - stun.*.*.*
    - +.stun.*.*
    - +.stun.*.*.*
    - +.stun.*.*.*.*
    - heartbeat.belkin.com
    - "*.linksys.com"
    - "*.linksyssmartwifi.com"
    - "*.router.asus.com"
    - mesu.apple.com
    - swscan.apple.com
    - swquery.apple.com
    - swdownload.apple.com
    - swcdn.apple.com
    - swdist.apple.com
    - lens.l.google.com
    - stun.l.google.com
    - +.nflxvideo.net
    - "*.square-enix.com"
    - "*.finalfantasyxiv.com"
    - "*.ffxiv.com"
    - "*.mcdn.bilivideo.cn"
    - +.media.dssott.com
proxies:
#========= TROJAN WS TLS =========
  - name: tjws🐟nawang.wokszs
    server: 104.21.8.121
    port: 443
    type: trojan
    password: 1d1c1d94-6987-4658-a4dc-8821a30fe7e0
    sni: nawang.wokszstore.com
    skip-cert-verify: true
    network: ws
    ws-opts:
      path: /trojan-ws
      headers:
        Host: nawang.wokszstore.com
    udp: true
  - name: tjws🐟RendVp
    server: 104.21.8.121
    port: 443
    type: trojan
    password: 1d1c1d94-6987-4658-a4dc-8821a30fe7e0
    sni: RendVpnStores.myvpnstore.biz.id
    skip-cert-verify: true
    network: ws
    ws-opts:
      path: /trojan-ws
      headers:
        Host: RendVpnStores.myvpnstore.biz.id
    udp: true
  - name: tjws🐟yaddykakkoii.sshweb
    server: 104.21.8.121
    port: 443
    type: trojan
    password: b7321a84-b417-42b3-930d-5b6844214b59
    sni: yaddykakkoii.sshweb.tech
    skip-cert-verify: true
    network: ws
    ws-opts:
      path: /yaddyganteng
      headers:
        Host: yaddykakkoii.sshweb.tech
    udp: true
  - name: tjws🐟jawir
    server: 104.21.8.121
    port: 443
    type: trojan
    password: yadddytampan
    sni: deciljawir.ganteng.tech
    skip-cert-verify: true
    network: ws
    ws-opts:
      path: /yaddyganteng
      headers:
        Host: deciljawir.ganteng.tech
    udp: true
#========= VMESS GRPC =========
  - name: vmgrpc🐟jawir
    server: 104.21.8.121
    port: 443
    type: vmess
    uuid: 42d8cf9a-49e0-42d6-81fb-beacd0057f9b
    alterId: 0
    cipher: auto
    tls: true
    servername: deciljawir.ganteng.tech
    skip-cert-verify: true
    network: grpc
    grpc-opts:
      grpc-mode: gun
      grpc-service-name: vmess-grpc
    udp: true
  - name: vmgrpc🐟yaddy999
    server: 172.67.139.111
    port: 443
    type: vmess
    uuid: 8ae63a1a-d6a4-4328-973a-797bcab07810
    alterId: 0
    cipher: auto
    tls: true
    servername: premium.sshweb.tech
    skip-cert-verify: true
    network: grpc
    grpc-opts:
      grpc-mode: gun
      grpc-service-name: vmess-grpc
    udp: true
#========= TROJAN GRPC =========
#tjgrpc-aulia999taxboo #c877d451-1b95-4e1e-b135-cc31ef218dd4 #taxboo.ganteng.tech #trojan-grpc
#taxboo.ganteng.tech #vm-taxboo999 #9c2ef614-722c-4034-9694-ffb822459e54
#VMESS WS NON TLS
  - name: vm🐟indo_citizen🇮🇩
    server: 172.67.139.111
    type: vmess
    port: 80
    uuid: 3311d893-72ea-4e02-b64d-71b7aadddf76
    alterId: 0
    cipher: auto
    tls: false
    skip-cert-verify: true
    servername: indo.yaddykakkoii.ganteng.tech
    network: ws
    ws-opts:
      path: /vmess
      headers:
        Host: indo.yaddykakkoii.ganteng.tech
    udp: true
  - name: vm🐟nawang.wokszs
    server: 172.67.139.111
    type: vmess
    port: 80
    uuid: 1d1c1d94-6987-4658-a4dc-8821a30fe7e0
    alterId: 0
    cipher: auto
    tls: false
    skip-cert-verify: true
    servername: nawang.wokszstore.com
    network: ws
    ws-opts:
      path: /vmess
      headers:
        Host: nawang.wokszstore.com
    udp: true
  - name: vm🐟RendV
    server: 172.67.139.111
    type: vmess
    port: 80
    uuid: 1d1c1d94-6987-4658-a4dc-8821a30fe7e0
    alterId: 0
    cipher: auto
    tls: false
    skip-cert-verify: true
    servername: RendVpnStores.myvpnstore.biz.id
    network: ws
    ws-opts:
      path: /vmess
      headers:
        Host: RendVpnStores.myvpnstore.biz.id
    udp: true
proxy-groups:
#Proxy Grup SELECTOR
  - name: FALLBACK
    type: fallback
    disable-udp: true
    proxies:
      - tjws🐟yaddykakkoii.sshweb
      - tjws🐟nawang.wokszs
      - tjws🐟RendVp
      - tjws🐟jawir
      - vm🐟RendV
      - vm🐟indo_citizen🇮🇩
      - vm🐟nawang.wokszs
      - vmgrpc🐟yaddy999
      - vmgrpc🐟jawir
    url: http://cp.cloudflare.com/generate_204
    interval: '180'
  - name: 🚥Best_PING+🚥
    type: url-test
    disable-udp: false
    proxies:
      - tjws🐟yaddykakkoii.sshweb
      - tjws🐟nawang.wokszs
      - tjws🐟RendVp
      - tjws🐟jawir
      - vm🐟RendV
      - vm🐟indo_citizen🇮🇩
      - vm🐟nawang.wokszs
      - vmgrpc🐟yaddy999
      - vmgrpc🐟jawir
    url: http://cp.cloudflare.com/generate_204
    interval: '99'
rules:
  - MATCH,GLOBAL
