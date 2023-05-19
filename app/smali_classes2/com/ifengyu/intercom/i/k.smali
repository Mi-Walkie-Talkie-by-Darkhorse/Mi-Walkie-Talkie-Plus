.class public final synthetic Lcom/ifengyu/intercom/i/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/i/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/i/k;

    invoke-direct {v0}, Lcom/ifengyu/intercom/i/k;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/i/k;->a:Lcom/ifengyu/intercom/i/k;

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

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    check-cast p2, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/u0;->G0(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)I

    move-result p1

    return p1
.end method
