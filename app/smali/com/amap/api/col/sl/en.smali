.class public final Lcom/amap/api/col/sl/en;
.super Lcom/amap/api/col/sl/ep;
.source "SwitchUpdateStrategy.java"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/sl/ep;-><init>()V

    iput-boolean p1, p0, Lcom/amap/api/col/sl/en;->b:Z

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/sl/en;->b:Z

    return v0
.end method
