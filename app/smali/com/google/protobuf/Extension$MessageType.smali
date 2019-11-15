.class public final enum Lcom/google/protobuf/Extension$MessageType;
.super Ljava/lang/Enum;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/Extension$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/Extension$MessageType;

.field public static final enum PROTO1:Lcom/google/protobuf/Extension$MessageType;

.field public static final enum PROTO2:Lcom/google/protobuf/Extension$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/protobuf/Extension$MessageType;

    const-string v1, "PROTO1"

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Extension$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Extension$MessageType;->PROTO1:Lcom/google/protobuf/Extension$MessageType;

    new-instance v0, Lcom/google/protobuf/Extension$MessageType;

    const-string v1, "PROTO2"

    invoke-direct {v0, v1, v3}, Lcom/google/protobuf/Extension$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Extension$MessageType;->PROTO2:Lcom/google/protobuf/Extension$MessageType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/protobuf/Extension$MessageType;

    sget-object v1, Lcom/google/protobuf/Extension$MessageType;->PROTO1:Lcom/google/protobuf/Extension$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/Extension$MessageType;->PROTO2:Lcom/google/protobuf/Extension$MessageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protobuf/Extension$MessageType;->$VALUES:[Lcom/google/protobuf/Extension$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Extension$MessageType;
    .locals 1

    const-class v0, Lcom/google/protobuf/Extension$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Extension$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/Extension$MessageType;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Extension$MessageType;->$VALUES:[Lcom/google/protobuf/Extension$MessageType;

    invoke-virtual {v0}, [Lcom/google/protobuf/Extension$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Extension$MessageType;

    return-object v0
.end method
