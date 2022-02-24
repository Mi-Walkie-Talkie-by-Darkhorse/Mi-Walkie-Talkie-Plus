.class public Lcom/ifengyu/blelib/e/a;
.super Ljava/lang/Object;
.source "CustomDataMerge.java"

# interfaces
.implements Lno/nordicsemi/android/ble/data/b;


# static fields
.field private static final b:Ljava/lang/String; = "a"


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([B)Z
    .locals 4

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    return v1

    .line 9
    :cond_0
    aget-byte v0, p1, v1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    aget-byte v0, p1, v3

    if-eq v0, v3, :cond_1

    aget-byte p1, p1, v3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public a(Lno/nordicsemi/android/ble/data/d;[BI)Z
    .locals 4
    .param p1    # Lno/nordicsemi/android/ble/data/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-direct {p0, p2}, Lcom/ifengyu/blelib/e/a;->a([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-static {p2}, Lcom/ifengyu/blelib/d/f;->e([B)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/blelib/e/a;->a:I

    .line 3
    sget-object v1, Lcom/ifengyu/blelib/e/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "merge-->pack incoming, total length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ifengyu/blelib/e/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    invoke-static {}, Lcom/ifengyu/blelib/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Lcom/ifengyu/blelib/e/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "merge-->pack incoming, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", data: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Lno/nordicsemi/android/ble/data/Data;

    invoke-direct {p3, p2}, Lno/nordicsemi/android/ble/data/Data;-><init>([B)V

    invoke-virtual {p3}, Lno/nordicsemi/android/ble/data/Data;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_2
    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/data/d;->a([B)Z

    .line 7
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/data/d;->a()I

    move-result p1

    iget p2, p0, Lcom/ifengyu/blelib/e/a;->a:I

    if-ne p1, p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method
