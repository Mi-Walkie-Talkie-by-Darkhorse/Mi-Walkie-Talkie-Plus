.class public final synthetic Lcom/ifengyu/intercom/ui/c/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMapLoadedListener;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/c/e;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/c/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/c/d;->a:Lcom/ifengyu/intercom/ui/c/e;

    return-void
.end method


# virtual methods
.method public final onMapLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/d;->a:Lcom/ifengyu/intercom/ui/c/e;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/e;->g()V

    return-void
.end method
