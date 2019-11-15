.class public Lorg/jboss/netty/bootstrap/Bootstrap;
.super Ljava/lang/Object;
.source "Bootstrap.java"

# interfaces
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# static fields
.field private static final ORDER_TEST_SAMPLES:[S


# instance fields
.field private volatile factory:Lorg/jboss/netty/channel/ChannelFactory;

.field private volatile options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

.field private volatile pipelineFactory:Lorg/jboss/netty/channel/ChannelPipelineFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/bootstrap/Bootstrap;->ORDER_TEST_SAMPLES:[S

    return-void

    :array_0
    .array-data 2
        0x2aas
        0x327s
        0x27ds
        0x166s
        0x23as
        0x33cs
        0x197s
        0x13fs
        0x69s
        0x29s
        0x233s
        0x220s
        0x206s
        0x12as
        0x1a2s
        0x32s
        0x9cs
        0x301s
        0x3d8s
        0x1f7s
        0xbfs
        0x242s
        0x135s
        0x2c6s
        0x147s
        0x2d0s
        0x24fs
        0x3abs
        0x176s
        0x2c3s
        0x2bs
        0x1cfs
        0xe3s
        0xaes
        0x1es
        0x213s
        0x87s
        0x3a2s
        0xbes
        0x337s
        0x39ds
        0x343s
        0x148s
        0xefs
        0x19fs
        0x1f4s
        0x90s
        0x1ccs
        0x53s
        0x306s
        0x399s
        0x4s
        0x5fs
        0x1d4s
        0x2afs
        0x1eds
        0x3dfs
        0x1b4s
        0xf5s
        0x2e6s
        0x95s
        0x335s
        0x8es
        0x30es
        0x129s
        0x396s
        0x395s
        0x1a8s
        0x3d2s
        0x3e0s
        0x4fs
        0x38as
        0x217s
        0x203s
        0x352s
        0x50s
        0x7ds
        0x17as
        0x133s
        0x373s
        0x344s
        0xa0s
        0x1bs
        0x276s
        0x29cs
        0xe2s
        0x230s
        0x2bas
        0x1d3s
        0x33ds
        0x1dcs
        0xa3s
        0x3d1s
        0x16fs
        0x145s
        0xb8s
        0xccs
        0x138s
        0x1e6s
        0x35s
        0xb3s
        0x250s
        0xfcs
        0x2ees
        0x37ds
        0x205s
        0x3a9s
        0x7cs
        0x94s
        0x2cfs
        0x3cds
        0x236s
        0x195s
        0x1c1s
        0x1c4s
        0x309s
        0x15ds
        0x2f9s
        0xa7s
        0x30fs
        0xdcs
        0x322s
        0x75s
        0x25cs
        0xd8s
        0x16bs
        0x78s
        0x26ds
        0xdbs
        0xb6s
        0x331s
        0xf4s
        0x1b6s
        0x1d1s
        0x3a6s
        0x378s
        0x274s
        0xd1s
        0x277s
        0x11s
        0x366s
        0x2a7s
        0x33as
        0x3b1s
        0x2a8s
        0x350s
        0x3ces
        0x23ds
        0x272s
        0x361s
        0x6ds
        0x13ds
        0x5bs
        0x1ees
        0x3c5s
        0x1d9s
        0x2d5s
        0x184s
        0x12es
        0x3a8s
        0x294s
        0x96s
        0x7as
        0x3b5s
        0x127s
        0x188s
        0x3fs
        0x27as
        0x304s
        0x8fs
        0x3des
        0x37fs
        0x21as
        0x3bs
        0x21ds
        0x20s
        0x29ds
        0x141s
        0x32bs
        0x2f4s
        0x52s
        0x3bbs
        0x3b9s
        0x27cs
        0x186s
        0xa2s
        0x2b0s
        0x1bcs
        0x46s
        0x24es
        0xb7s
        0x2e9s
        0x21fs
        0x29as
        0x3b7s
        0x282s
        0x2ebs
        0x2fds
        0x62s
        0x1d5s
        0x374s
        0x3a1s
        0xb2s
        0x2d1s
        0x3e2s
        0x348s
        0x161s
        0x2d6s
        0x3acs
        0x2f7s
        0x270s
        0x397s
        0x29bs
        0x275s
        0x110s
        0x3d3s
        0x146s
        0x260s
        0x1c5s
        0xbs
        0x142s
        0x15bs
        0x287s
        0x162s
        0x17ds
        0x2eas
        0x1d8s
        0x37as
        0xf9s
        0x218s
        0x2dds
        0x194s
        0xaas
        0x3bfs
        0x22s
        0x383s
        0xc3s
        0x28bs
        0x8cs
        0x358s
        0xc9s
        0xeds
        0x33s
        0x3a5s
        0x10cs
        0x351s
        0x126s
        0x73s
        0x9ds
        0xes
        0x356s
        0x175s
        0xbas
        0x368s
        0x47s
        0x20bs
        0x3a3s
        0x3b8s
        0x28fs
        0x231s
        0x25fs
        0x35es
        0x22as
        0x295s
        0x139s
        0x38ds
        0x1ffs
        0x2f0s
        0x3das
        0x137s
        0x11fs
        0x307s
        0x1f9s
        0x36es
        0x1a6s
        0x67s
        0x12bs
        0x77s
        0x6bs
        0x158s
        0x1e7s
        0x308s
        0x1bds
        0xdas
        0x225s
        0x2b9s
        0x1c6s
        0x6s
        0x1ces
        0x1c7s
        0x34s
        0x1e1s
        0x252s
        0x7es
        0x70s
        0x42s
        0x36ds
        0xacs
        0x99s
        0x390s
        0x342s
        0x2e5s
        0x262s
        0x393s
        0x3c4s
        0x33fs
        0x23fs
        0x2cas
        0xfas
        0x1cds
        0x32es
        0x391s
        0x171s
        0x21es
        0x372s
        0x353s
        0x1abs
        0x346s
        0x363s
        0x1fbs
        0x1b2s
        0x239s
        0x14s
        0x3b6s
        0x318s
        0x25ds
        0x31es
        0x3c2s
        0x39bs
        0x102s
        0x3ccs
        0x2fas
        0x329s
        0x34bs
        0x2a2s
        0x1c0s
        0x118s
        0x1efs
        0x11ds
        0x336s
        0x11bs
        0x93s
        0x1c3s
        0x3e1s
        0x31as
        0x3d6s
        0x2ecs
        0xbds
        0x112s
        0x60s
        0x49s
        0x32as
        0x191s
        0x105s
        0x115s
        0x15as
        0x20fs
        0x285s
        0x259s
        0x364s
        0xf8s
        0x36fs
        0x173s
        0x1acs
        0x22fs
        0x116s
        0x109s
        0x3es
        0xe1s
        0x355s
        0x1e3s
        0x303s
        0x9s
        0x8s
        0x153s
        0x28ds
        0x107s
        0x1cs
        0x1dds
        0x3e3s
        0xd0s
        0x370s
        0x124s
        0x1e0s
        0x204s
        0x1c9s
        0x11es
        0x381s
        0x15s
        0x354s
        0x3cbs
        0x292s
        0x26fs
        0x210s
        0x13cs
        0x1d7s
        0x35cs
        0x132s
        0x27es
        0x2c7s
        0x36bs
        0x29fs
        0x6cs
        0x9es
        0x286s
        0x18s
        0x101s
        0x2d4s
        0xc1s
        0x155s
        0x386s
        0x257s
        0x235s
        0x14es
        0x1fas
        0x2acs
        0x3c0s
        0x30cs
        0x1ads
        0x321s
        0x38es
        0x134s
        0x17fs
        0x385s
        0x1e9s
        0x51s
        0x200s
        0xa4s
        0x2f3s
        0x202s
        0x2d3s
        0x8ds
        0x128s
        0x3bes
        0x2aes
        0xfs
        0x31fs
        0x243s
        0x256s
        0x22es
        0x19es
        0x40s
        0x1a4s
        0x2das
        0x100s
        0x83s
        0x2ds
        0x81s
        0x103s
        0x152s
        0x3e7s
        0xafs
        0x2e4s
        0x316s
        0x144s
        0x3d9s
        0x380s
        0x1e2s
        0x349s
        0x25es
        0x179s
        0x6fs
        0x174s
        0x2bbs
        0x3dcs
        0xe9s
        0xf3s
        0xcbs
        0x30ds
        0x3c9s
        0x387s
        0x296s
        0x278s
        0x12ds
        0x2cs
        0x3d5s
        0x24s
        0x19cs
        0x3b2s
        0x330s
        0x11cs
        0x1bfs
        0xd6s
        0x2a0s
        0x2f6s
        0x3bas
        0x324s
        0x2s
        0x3a0s
        0x376s
        0x1a5s
        0x254s
        0x23es
        0x10s
        0x37cs
        0x44s
        0x222s
        0x20as
        0x1eas
        0x369s
        0x290s
        0x2b8s
        0x360s
        0x82s
        0x28s
        0x189s
        0x39es
        0x18as
        0x3a4s
        0x36cs
        0x298s
        0x125s
        0x9as
        0x394s
        0x37s
        0xc4s
        0x34as
        0x1f2s
        0xb1s
        0x3b4s
        0x21cs
        0x7fs
        0x10fs
        0x71s
        0x34cs
        0x240s
        0x84s
        0x3afs
        0xcs
        0x7bs
        0x123s
        0x1fs
        0xd4s
        0x211s
        0x223s
        0xabs
        0x246s
        0x261s
        0x319s
        0x33es
        0xdds
        0x1b8s
        0x238s
        0x76s
        0x196s
        0xc2s
        0x33bs
        0x168s
        0x26es
        0x185s
        0x320s
        0x23bs
        0xd5s
        0x106s
        0x193s
        0x198s
        0x371s
        0x121s
        0x27bs
        0x3c7s
        0x1b0s
        0x178s
        0x289s
        0x340s
        0x359s
        0x2cds
        0x91s
        0x1fes
        0x9fs
        0x3d4s
        0x2abs
        0x244s
        0x1e4s
        0x17bs
        0xf6s
        0x58s
        0x237s
        0x140s
        0x283s
        0x7s
        0x39cs
        0x18ds
        0xas
        0x313s
        0x34ds
        0x30bs
        0x29es
        0x2ccs
        0x13s
        0x258s
        0x17es
        0x0s
        0xd2s
        0x299s
        0xe4s
        0x61s
        0x10as
        0x5as
        0x130s
        0x1c8s
        0xb4s
        0x98s
        0x1a9s
        0x136s
        0x300s
        0xdfs
        0x2bes
        0x3e5s
        0x241s
        0x297s
        0x122s
        0x219s
        0x1a0s
        0x1aas
        0x392s
        0x2b3s
        0x17s
        0x119s
        0x1f1s
        0x1fcs
        0x30s
        0x2a9s
        0x245s
        0x2d8s
        0x63s
        0x31bs
        0x212s
        0x367s
        0x3bds
        0x379s
        0xces
        0x32ds
        0x347s
        0x2c5s
        0x325s
        0xfds
        0x97s
        0x265s
        0x41s
        0x28es
        0x5ds
        0x27fs
        0x310s
        0x37bs
        0x160s
        0x43s
        0x1aes
        0x2f2s
        0x4cs
        0xbbs
        0x1bbs
        0x2a4s
        0x16as
        0x3c1s
        0x36as
        0x14as
        0x14bs
        0x180s
        0x55s
        0xd9s
        0x357s
        0x332s
        0x2e2s
        0x169s
        0x13as
        0x3s
        0x267s
        0x208s
        0x163s
        0x398s
        0x2b1s
        0x16s
        0xbcs
        0x31s
        0x388s
        0x3a7s
        0x88s
        0x1dbs
        0x2b5s
        0x2eds
        0x207s
        0x32cs
        0x64s
        0xcfs
        0x3c3s
        0x16cs
        0x1d0s
        0x23cs
        0x2dbs
        0xe6s
        0x341s
        0x181s
        0x1f3s
        0x221s
        0x111s
        0xe8s
        0x18es
        0x1des
        0x3cfs
        0x234s
        0x18fs
        0x1f8s
        0x23s
        0x232s
        0x3aas
        0xd3s
        0x1as
        0x151s
        0x36s
        0x266s
        0x24as
        0x1b1s
        0x1c2s
        0x2fbs
        0xees
        0x131s
        0x3ads
        0x172s
        0x375s
        0x345s
        0xeas
        0x6es
        0x89s
        0x18bs
        0x170s
        0x2b7s
        0x156s
        0x38bs
        0x18cs
        0x1das
        0xb0s
        0x2e1s
        0x31cs
        0x1bes
        0x25s
        0x37es
        0x2d7s
        0x288s
        0x1afs
        0x1s
        0x16es
        0x20ds
        0x229s
        0x2c0s
        0x149s
        0x273s
        0x1dfs
        0x21s
        0x1ecs
        0x104s
        0xf1s
        0x56s
        0xb9s
        0x1ebs
        0x3c6s
        0xf7s
        0xds
        0x24bs
        0x25as
        0x199s
        0x14fs
        0x28as
        0xebs
        0x263s
        0x1d6s
        0x1bas
        0x255s
        0xfes
        0x157s
        0x21bs
        0x92s
        0x249s
        0x251s
        0x281s
        0x302s
        0x5es
        0x3d0s
        0x2c1s
        0xb5s
        0xffs
        0x13bs
        0x2ces
        0x20es
        0x3dbs
        0x2b4s
        0x3d7s
        0x253s
        0x382s
        0x11as
        0x85s
        0x1b7s
        0x279s
        0x216s
        0x35ds
        0x10ds
        0x26bs
        0x2a5s
        0x1f6s
        0x177s
        0xe0s
        0x326s
        0x365s
        0x1a1s
        0x248s
        0x264s
        0x323s
        0x3as
        0x54s
        0x314s
        0x31ds
        0x26s
        0x2bcs
        0x2efs
        0x25bs
        0x28cs
        0x39s
        0xf0s
        0x3b3s
        0x15es
        0x10es
        0x14ds
        0x74s
        0x2e0s
        0x45s
        0x4as
        0x68s
        0x2ffs
        0x13es
        0x2dfs
        0x35bs
        0x165s
        0x22bs
        0x19bs
        0x10bs
        0x2c8s
        0x2a3s
        0x214s
        0x339s
        0x1f0s
        0x39fs
        0x3aes
        0x66s
        0x2es
        0xc0s
        0x72s
        0x2e8s
        0x8as
        0x3e6s
        0x48s
        0x269s
        0x86s
        0x34es
        0xa6s
        0x4ds
        0x384s
        0x5s
        0x12fs
        0x183s
        0x190s
        0x2fs
        0x2d9s
        0x39as
        0xdes
        0xc5s
        0x15fs
        0x1fds
        0x20cs
        0xa5s
        0x1e5s
        0x12cs
        0x3b0s
        0x17cs
        0x271s
        0x30as
        0x2ads
        0x1ds
        0x24ds
        0x2fes
        0xa1s
        0x187s
        0x1a7s
        0x2as
        0x2des
        0x228s
        0xd7s
        0x338s
        0x38cs
        0xe5s
        0x59s
        0xfbs
        0xc7s
        0x268s
        0x4es
        0x284s
        0xf2s
        0x2d2s
        0x19s
        0x1b5s
        0x2dcs
        0x3bcs
        0x113s
        0xc8s
        0x3cas
        0x2f1s
        0x317s
        0x150s
        0x22cs
        0x34fs
        0x2bfs
        0xecs
        0x2cbs
        0x4bs
        0x35fs
        0x2c9s
        0x311s
        0x38fs
        0x312s
        0x26cs
        0x227s
        0x19ds
        0x27s
        0x2e3s
        0x334s
        0x328s
        0x2fcs
        0x2bds
        0x333s
        0xads
        0x3dds
        0x159s
        0x2b2s
        0x1cbs
        0x3cs
        0x6as
        0x377s
        0x3e4s
        0x16ds
        0x2a1s
        0x3c8s
        0x201s
        0x12s
        0x1a3s
        0x226s
        0x24cs
        0x1b3s
        0x108s
        0x315s
        0x154s
        0x293s
        0x1d2s
        0x164s
        0x120s
        0x38s
        0x2c4s
        0x22ds
        0x1e8s
        0x2f8s
        0x14cs
        0x192s
        0xa8s
        0xcas
        0x209s
        0x2f5s
        0xcds
        0x2c2s
        0x1b9s
        0x305s
        0xe7s
        0x247s
        0x182s
        0x2a6s
        0x26as
        0x32fs
        0x117s
        0x57s
        0x215s
        0x3ds
        0x224s
        0x5cs
        0xa9s
        0x2b6s
        0x389s
        0xc6s
        0x79s
        0x19as
        0x8bs
        0x291s
        0x280s
        0x2e7s
        0x80s
        0x1cas
        0x362s
        0x1f5s
        0x15cs
        0x9bs
        0x114s
        0x65s
        0x35as
        0x143s
        0x167s
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->pipelineFactory(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipelineFactory:Lorg/jboss/netty/channel/ChannelPipelineFactory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->options:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->pipelineFactory(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipelineFactory:Lorg/jboss/netty/channel/ChannelPipelineFactory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->options:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/bootstrap/Bootstrap;->setFactory(Lorg/jboss/netty/channel/ChannelFactory;)V

    return-void
.end method

.method static isOrderedMap(Ljava/util/Map;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    move v0, v3

    :goto_2
    if-ge v0, v6, :cond_2

    aget-object v7, v5, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OrderedMap"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "dummyValue"

    sget-object v7, Lorg/jboss/netty/bootstrap/Bootstrap;->ORDER_TEST_SAMPLES:[S

    array-length v8, v7

    move v4, v3

    :goto_3
    if-ge v4, v8, :cond_6

    aget-short v1, v7, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getFactory()Lorg/jboss/netty/channel/ChannelFactory;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "factory is not set yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->options:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getPipeline() cannot be called if setPipelineFactory() was called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public getPipelineAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pipelineFactory in use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipeline;->toMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipelineFactory:Lorg/jboss/netty/channel/ChannelPipelineFactory;

    return-object v0
.end method

.method public releaseExternalResources()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFactory;->releaseExternalResources()V

    :cond_0
    return-void
.end method

.method public setFactory(Lorg/jboss/netty/channel/ChannelFactory;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "factory can\'t change once set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->options:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "options"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->options:Ljava/util/Map;

    return-void
.end method

.method public setPipeline(Lorg/jboss/netty/channel/ChannelPipeline;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pipeline"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->pipelineFactory(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipelineFactory:Lorg/jboss/netty/channel/ChannelPipelineFactory;

    return-void
.end method

.method public setPipelineAsMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pipelineMap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/bootstrap/Bootstrap;->isOrderedMap(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pipelineMap is not an ordered map. Please use "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelHandler;

    invoke-interface {v2, v1, v0}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lorg/jboss/netty/bootstrap/Bootstrap;->setPipeline(Lorg/jboss/netty/channel/ChannelPipeline;)V

    return-void
.end method

.method public setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pipelineFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    iput-object p1, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->pipelineFactory:Lorg/jboss/netty/channel/ChannelPipelineFactory;

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/Bootstrap;->factory:Lorg/jboss/netty/channel/ChannelFactory;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFactory;->shutdown()V

    :cond_0
    return-void
.end method
