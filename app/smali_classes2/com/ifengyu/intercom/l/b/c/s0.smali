.class public final synthetic Lcom/ifengyu/intercom/l/b/c/s0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMapLoadedListener;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/c/v1;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/c/v1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/s0;->a:Lcom/ifengyu/intercom/l/b/c/v1;

    return-void
.end method


# virtual methods
.method public final onMapLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/s0;->a:Lcom/ifengyu/intercom/l/b/c/v1;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/c/v1;->n3()V

    return-void
.end method
