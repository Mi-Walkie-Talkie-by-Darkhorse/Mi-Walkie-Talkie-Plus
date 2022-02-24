.class public final synthetic Lcom/ifengyu/intercom/lite/h/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/lite/h/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/v;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/h/v;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/lite/h/v;->a:Lcom/ifengyu/intercom/lite/h/v;

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

    check-cast p1, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    check-cast p2, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/lite/h/h0;->a(Lcom/ifengyu/intercom/lite/models/ChannelModel;Lcom/ifengyu/intercom/lite/models/ChannelModel;)I

    move-result p1

    return p1
.end method
