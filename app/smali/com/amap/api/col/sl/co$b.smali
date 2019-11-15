.class final Lcom/amap/api/col/sl/co$b;
.super Ljava/lang/Object;
.source "SoCrashLogProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static synthetic a(Lcom/amap/api/col/sl/co$b;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/col/sl/co$b;->a:I

    return p1
.end method

.method static synthetic a(Lcom/amap/api/col/sl/co$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/co$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/co$b;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/sl/co$b;->a:I

    return v0
.end method
