.class public final synthetic Lcom/ifengyu/intercom/l/a/b/c/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/l/a/b/c/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/l/a/b/c/b;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/a/b/c/b;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/l/a/b/c/b;->a:Lcom/ifengyu/intercom/l/a/b/c/b;

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

    check-cast p1, Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/b/c/u;->R(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    return-void
.end method
