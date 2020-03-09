package plugin

type Type int

type Plugin interface {
	ID() string
	Name() string
	Author() string
	Version() string
	Description() string
	Metadata() map[string]string
	Tags() map[string]string
}
