.class Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$b;
.super Ljava/lang/Object;
.source "TrackInfoDetailActivity.java"

# interfaces
.implements Lcom/github/mikephil/charting/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLcom/github/mikephil/charting/components/a;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->j(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
