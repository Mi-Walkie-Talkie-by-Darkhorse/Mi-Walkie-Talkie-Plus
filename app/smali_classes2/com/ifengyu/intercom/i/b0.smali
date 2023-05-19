.class public final synthetic Lcom/ifengyu/intercom/i/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/i/b0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/i/b0;

    invoke-direct {v0}, Lcom/ifengyu/intercom/i/b0;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/i/b0;->a:Lcom/ifengyu/intercom/i/b0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/w0;->b1(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method
