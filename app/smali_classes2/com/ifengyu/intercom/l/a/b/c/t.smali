.class public final synthetic Lcom/ifengyu/intercom/l/a/b/c/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/l/a/b/c/t;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/l/a/b/c/t;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/a/b/c/t;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/l/a/b/c/t;->a:Lcom/ifengyu/intercom/l/a/b/c/t;

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

    check-cast p1, Lcom/ifengyu/intercom/database/a/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/database/a/c;->b()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
