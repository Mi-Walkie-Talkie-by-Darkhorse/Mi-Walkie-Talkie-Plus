.class public final synthetic Lcom/ifengyu/intercom/l/a/b/b/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/l/a/b/b/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/l/a/b/b/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/a/b/b/a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/l/a/b/b/a;->a:Lcom/ifengyu/intercom/l/a/b/b/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/configFile/entity/ConfigItemAdapterEntity;->getConfigFile()Lcom/ifengyu/intercom/models/ConfigFileModel;

    move-result-object p1

    return-object p1
.end method
