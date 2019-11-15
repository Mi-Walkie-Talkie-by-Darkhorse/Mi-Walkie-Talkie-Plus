.class final Lcom/amap/api/col/sl/dg$a;
.super Ljava/lang/Object;
.source "LoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field volatile a:Z

.field volatile b:Z

.field final synthetic c:Lcom/amap/api/col/sl/dg;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/dg;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/amap/api/col/sl/dg$a;->c:Lcom/amap/api/col/sl/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/amap/api/col/sl/dg$a;->a:Z

    iput-boolean v0, p0, Lcom/amap/api/col/sl/dg$a;->b:Z

    return-void
.end method
