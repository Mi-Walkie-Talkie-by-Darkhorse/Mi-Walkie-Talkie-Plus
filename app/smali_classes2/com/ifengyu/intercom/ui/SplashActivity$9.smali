.class Lcom/ifengyu/intercom/ui/SplashActivity$9;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lio/reactivex/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/SplashActivity;->a(ILpl/droidsonroids/gif/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/b/g",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ifengyu/intercom/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/SplashActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$9;->b:Lcom/ifengyu/intercom/ui/SplashActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/SplashActivity$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .param p1    # Ljava/lang/Long;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$9;->a:I

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity$9;->a(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
