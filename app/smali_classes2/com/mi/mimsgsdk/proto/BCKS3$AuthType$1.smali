.class final Lcom/mi/mimsgsdk/proto/BCKS3$AuthType$1;
.super Ljava/lang/Object;
.source "BCKS3.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType$1;->findValueByNumber(I)Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;
    .locals 1

    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;->valueOf(I)Lcom/mi/mimsgsdk/proto/BCKS3$AuthType;

    move-result-object v0

    return-object v0
.end method
