.class Lcom/amap/api/mapcore/util/ek$b;
.super Ljava/lang/Object;
.source "RectPacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# static fields
.field static final synthetic e:Z


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/amap/api/mapcore/util/ek$c;

.field c:Lcom/amap/api/mapcore/util/ek$b;

.field d:Lcom/amap/api/mapcore/util/ek$b;

.field final synthetic f:Lcom/amap/api/mapcore/util/ek;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amap/api/mapcore/util/ek;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/amap/api/mapcore/util/ek$b;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/amap/api/mapcore/util/ek;Lcom/amap/api/mapcore/util/ek$c;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ek$b;->f:Lcom/amap/api/mapcore/util/ek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->c:Lcom/amap/api/mapcore/util/ek$b;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->d:Lcom/amap/api/mapcore/util/ek$b;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    return-void
.end method


# virtual methods
.method a(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ek$b;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ek$b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->c:Lcom/amap/api/mapcore/util/ek$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/ek$b;->a(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ek$b;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->d:Lcom/amap/api/mapcore/util/ek$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/ek$b;->a(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ek$b;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ek$b;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/ek$b;->b(II)Lcom/amap/api/mapcore/util/ek$a;

    move-result-object v1

    sget-object v2, Lcom/amap/api/mapcore/util/ek$1;->a:[I

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ek$a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->c:Lcom/amap/api/mapcore/util/ek$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/ek$b;->a(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ek$b;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iput-object p3, p0, Lcom/amap/api/mapcore/util/ek$b;->a:Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/ek$b;->a(II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method a(II)V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/ek$c;->c:I

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v1, v1, Lcom/amap/api/mapcore/util/ek$c;->d:I

    sub-int/2addr v1, p2

    sget-boolean v2, Lcom/amap/api/mapcore/util/ek$b;->e:Z

    if-nez v2, :cond_0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v2, Lcom/amap/api/mapcore/util/ek$b;->e:Z

    if-nez v2, :cond_1

    if-gez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    if-le v0, v1, :cond_2

    new-instance v0, Lcom/amap/api/mapcore/util/ek$c;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ek$b;->f:Lcom/amap/api/mapcore/util/ek;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v2, v2, Lcom/amap/api/mapcore/util/ek$c;->a:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v3, v3, Lcom/amap/api/mapcore/util/ek$c;->b:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v5, v4, Lcom/amap/api/mapcore/util/ek$c;->d:I

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/ek$c;-><init>(Lcom/amap/api/mapcore/util/ek;IIII)V

    new-instance v1, Lcom/amap/api/mapcore/util/ek$c;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ek$b;->f:Lcom/amap/api/mapcore/util/ek;

    iget v3, v0, Lcom/amap/api/mapcore/util/ek$c;->a:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v4, v4, Lcom/amap/api/mapcore/util/ek$c;->b:I

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v5, v5, Lcom/amap/api/mapcore/util/ek$c;->c:I

    sub-int/2addr v5, p1

    iget-object v6, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v6, v6, Lcom/amap/api/mapcore/util/ek$c;->d:I

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore/util/ek$c;-><init>(Lcom/amap/api/mapcore/util/ek;IIII)V

    :goto_0
    new-instance v2, Lcom/amap/api/mapcore/util/ek$b;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ek$b;->f:Lcom/amap/api/mapcore/util/ek;

    invoke-direct {v2, v3, v0}, Lcom/amap/api/mapcore/util/ek$b;-><init>(Lcom/amap/api/mapcore/util/ek;Lcom/amap/api/mapcore/util/ek$c;)V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ek$b;->c:Lcom/amap/api/mapcore/util/ek$b;

    new-instance v0, Lcom/amap/api/mapcore/util/ek$b;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ek$b;->f:Lcom/amap/api/mapcore/util/ek;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/mapcore/util/ek$b;-><init>(Lcom/amap/api/mapcore/util/ek;Lcom/amap/api/mapcore/util/ek$c;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->d:Lcom/amap/api/mapcore/util/ek$b;

    return-void

    :cond_2
    new-instance v0, Lcom/amap/api/mapcore/util/ek$c;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ek$b;->f:Lcom/amap/api/mapcore/util/ek;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v2, v2, Lcom/amap/api/mapcore/util/ek$c;->a:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v3, v3, Lcom/amap/api/mapcore/util/ek$c;->b:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v4, v4, Lcom/amap/api/mapcore/util/ek$c;->c:I

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/ek$c;-><init>(Lcom/amap/api/mapcore/util/ek;IIII)V

    new-instance v1, Lcom/amap/api/mapcore/util/ek$c;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ek$b;->f:Lcom/amap/api/mapcore/util/ek;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v3, v3, Lcom/amap/api/mapcore/util/ek$c;->a:I

    iget v4, v0, Lcom/amap/api/mapcore/util/ek$c;->b:I

    add-int/2addr v4, p2

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v5, v5, Lcom/amap/api/mapcore/util/ek$c;->c:I

    iget-object v6, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v6, v6, Lcom/amap/api/mapcore/util/ek$c;->d:I

    sub-int/2addr v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore/util/ek$c;-><init>(Lcom/amap/api/mapcore/util/ek;IIII)V

    goto :goto_0
.end method

.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->c:Lcom/amap/api/mapcore/util/ek$b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ek$b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ek$b;->a:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->c:Lcom/amap/api/mapcore/util/ek$b;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ek$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->d:Lcom/amap/api/mapcore/util/ek$b;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ek$b;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ek$b;->c:Lcom/amap/api/mapcore/util/ek$b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ek$b;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ek$b;->d:Lcom/amap/api/mapcore/util/ek$b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ek$b;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ek$b;->c:Lcom/amap/api/mapcore/util/ek$b;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ek$b;->d:Lcom/amap/api/mapcore/util/ek$b;

    goto :goto_0
.end method

.method b(II)Lcom/amap/api/mapcore/util/ek$a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/ek$c;->c:I

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/ek$c;->d:I

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/ek$c;->c:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->b:Lcom/amap/api/mapcore/util/ek$c;

    iget v0, v0, Lcom/amap/api/mapcore/util/ek$c;->d:I

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/amap/api/mapcore/util/ek$a;->b:Lcom/amap/api/mapcore/util/ek$a;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/ek$a;->c:Lcom/amap/api/mapcore/util/ek$a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amap/api/mapcore/util/ek$a;->a:Lcom/amap/api/mapcore/util/ek$a;

    goto :goto_0
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ek$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ek$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
