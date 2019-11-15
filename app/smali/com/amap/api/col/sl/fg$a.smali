.class final Lcom/amap/api/col/sl/fg$a;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/sl/ev;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/fg$a;->a:Lcom/amap/api/col/sl/ev;

    iput-object v0, p0, Lcom/amap/api/col/sl/fg$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/amap/api/col/sl/ev;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/fg$a;->a:Lcom/amap/api/col/sl/ev;

    return-object v0
.end method

.method public final a(Lcom/amap/api/col/sl/ev;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/fg$a;->a:Lcom/amap/api/col/sl/ev;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/fg$a;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "##"

    const-string v1, "#"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/fg$a;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/fg$a;->b:Ljava/lang/String;

    return-object v0
.end method
