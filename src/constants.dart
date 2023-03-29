
import "dart:typed_data";
import "release.dart" as release;

const UDP_CHUNK_SIZE            = 1448;
const UDP_HEADER_SIZE           = 40; // udp header size in bytes
const CHALLENGER_PORT           = 55555;
const PROVER_PORT               = 44444;

const HASH_SIZE_IN_BITS         = 32; // XXX 64 is better ?
const MAX_HASH                  = (1 << HASH_SIZE_IN_BITS) - 1;

const SERVER                    = "pob.witnesschain.com";
const SERVER_IPv4               = "IPv4." + SERVER;
const SERVER_IPv6               = "IPv6." + SERVER;

const SERVER_PORT               = ""; // :port

const API_VERSION               = "/api";
const BASE_URL                  = "https://" + SERVER      + SERVER_PORT + API_VERSION;
const BASE_URL_IPv4             = "https://" + SERVER_IPv4 + SERVER_PORT + API_VERSION;
const BASE_URL_IPv6             = "https://" + SERVER_IPv6 + SERVER_PORT + API_VERSION;

final LOGIN_URL                 = Uri.parse(BASE_URL + "/login"                 );
final LOGOUT_URL                = Uri.parse(BASE_URL + "/logout"                );
final PRE_LOGIN_URL             = Uri.parse(BASE_URL + "/pre-login"             );
final CHALLENGE_REQUEST_URL     = Uri.parse(BASE_URL + "/pob-challenge-request" );
final CHALLENGE_STATUS_URL      = Uri.parse(BASE_URL + "/pob-challenge-status"  );
final CHALLENGE_RESULT_URL      = Uri.parse(BASE_URL + "/pob-challenge-result"  );

final IP_INFO_URL               = Uri.parse(BASE_URL      + "/ip-info"          );
final IP_INFO_URL_IPv4          = Uri.parse(BASE_URL_IPv4 + "/ip-info"          );
final IP_INFO_URL_IPv6          = Uri.parse(BASE_URL_IPv6 + "/ip-info"          );

const WEBSOCKET_END_POINT       = SERVER      + SERVER_PORT + API_VERSION + "/ws";
const WEBSOCKET_END_POINT_IPv4  = SERVER_IPv4 + SERVER_PORT + API_VERSION + "/ws";
const WEBSOCKET_END_POINT_IPv6  = SERVER_IPv6 + SERVER_PORT + API_VERSION + "/ws";

final WEBSOCKET_GET_URL_IPv4    = Uri.parse("https://"  + WEBSOCKET_END_POINT_IPv4);
final WEBSOCKET_GET_URL_IPv6    = Uri.parse("https://"  + WEBSOCKET_END_POINT_IPv6);

const CONTENT_TYPE_JSON         = {
        "content-type" : "application/json"
};

final POB_RELEASE_VERSION                   = release.version.trim();

const CHALLENGE_ID_LENGTH                   = 127;

const INDEX_START_CHALLENGE_ID              = 2;
const INDEX_END_CHALLENGE_ID                = INDEX_START_CHALLENGE_ID + CHALLENGE_ID_LENGTH - 1;

const INDEX_START_SEQUENCE_NUMBER           = INDEX_END_CHALLENGE_ID + 1;
const INDEX_START_RANDOM_NUMBER             = INDEX_START_SEQUENCE_NUMBER + 4;

const INDEX_START_PUBLIC_KEY_TYPE           = INDEX_START_RANDOM_NUMBER + 4;
const INDEX_START_PUBLIC_KEY_LENGTH         = INDEX_START_PUBLIC_KEY_TYPE + 1;

const INDEX_START_PUBLIC_KEY                = INDEX_START_PUBLIC_KEY_LENGTH + 1;

final FOR_2_SECONDS                         = Duration (seconds : 2);

final EMPTY_PACKET                          = Uint8List(0);
