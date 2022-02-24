.class Lcom/ifengyu/intercom/ui/map/e/b/b$a$a;
.super Ljava/lang/Object;
.source "OsmClusterOverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/e/b/b$a;->b(ILcom/ifengyu/intercom/ui/map/f/a/f;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/e/b/b$a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/e/b/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$a$a;->a:Lcom/ifengyu/intercom/ui/map/e/b/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$a$a;->a:Lcom/ifengyu/intercom/ui/map/e/b/b$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/map/e/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/e/b/b;)Lorg/osmdroid/views/MapView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/e/b/b;Lorg/osmdroid/views/MapView;)V

    return-void
.end method
