.class public final enum Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
.super Ljava/lang/Enum;
.source "HttpMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_CHUNKED_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_CHUNKED_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_CHUNK_DELIMITER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_CHUNK_FOOTER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_FIXED_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_FIXED_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_HEADER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_INITIAL:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_VARIABLE_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "SKIP_CONTROL_CHARS"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_INITIAL"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_INITIAL:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_HEADER"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_HEADER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_VARIABLE_LENGTH_CONTENT"

    invoke-direct {v0, v1, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS"

    invoke-direct {v0, v1, v7}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_FIXED_LENGTH_CONTENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_FIXED_LENGTH_CONTENT_AS_CHUNKS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_CHUNK_SIZE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_CHUNKED_CONTENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_CHUNKED_CONTENT_AS_CHUNKS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_CHUNK_DELIMITER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_DELIMITER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_CHUNK_FOOTER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_FOOTER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const/16 v0, 0xc

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_INITIAL:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_HEADER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_DELIMITER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_FOOTER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->$VALUES:[Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->$VALUES:[Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    return-object v0
.end method
