.class public final synthetic Lcom/uber/autodispose/q/b/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BooleanSupplier;


# static fields
.field public static final synthetic a:Lcom/uber/autodispose/q/b/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uber/autodispose/q/b/b;

    invoke-direct {v0}, Lcom/uber/autodispose/q/b/b;-><init>()V

    sput-object v0, Lcom/uber/autodispose/q/b/b;->a:Lcom/uber/autodispose/q/b/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    invoke-static {}, Lcom/uber/autodispose/q/b/c;->b()Z

    move-result v0

    return v0
.end method
