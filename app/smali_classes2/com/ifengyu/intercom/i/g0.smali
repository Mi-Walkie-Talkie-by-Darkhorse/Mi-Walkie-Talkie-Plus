.class public final synthetic Lcom/ifengyu/intercom/i/g0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/i/g0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/i/g0;

    invoke-direct {v0}, Lcom/ifengyu/intercom/i/g0;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/i/g0;->a:Lcom/ifengyu/intercom/i/g0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    check-cast p2, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/x0;->E0(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)I

    move-result p1

    return p1
.end method
