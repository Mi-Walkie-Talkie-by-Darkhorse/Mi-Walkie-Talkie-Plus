.class Lcom/ifengyu/intercom/ui/map/c/b/b$1$1;
.super Ljava/lang/Object;
.source "OsmClusterOverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a(ILcom/ifengyu/intercom/ui/map/d/a/f;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/c/b/b$1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/c/b/b$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$1$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$1$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$1$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b$1;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/c/b/b;)Lorg/osmdroid/views/MapView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/c/b/b;Lorg/osmdroid/views/MapView;)V

    return-void
.end method
