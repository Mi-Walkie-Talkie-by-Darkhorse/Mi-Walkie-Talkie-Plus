.class public Lcom/ifengyu/intercom/a/d/a;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
