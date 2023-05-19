.class public final synthetic Lcom/ifengyu/talk/f/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic a:Lcom/ifengyu/talk/f/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/talk/f/p;

    invoke-direct {v0}, Lcom/ifengyu/talk/f/p;-><init>()V

    sput-object v0, Lcom/ifengyu/talk/f/p;->a:Lcom/ifengyu/talk/f/p;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/ifengyu/talk/f/e0;->o(Ljava/lang/Throwable;)V

    return-void
.end method
