.class Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$4;
.super Ljava/lang/Object;
.source "TrackInfoDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->finish()V

    return-void
.end method
